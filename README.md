# Web Service And Ui Testing With Karate
Karate ile Web Servis ve Api test örneği

This sample project includes api and ui testing with Karate
# Runners
## Api Runner
    @Karate.Test
    Karate testApi() {
        return Karate.run("SpotifyApi.feature").relativeTo(getClass());
    }
## UI Runner
    @Karate.Test
    Karate testUi() {
        return Karate.run("SpotifyUi.feature").relativeTo(getClass());
    }
## Hibrit Runner
    @Karate.Test
    Karate testHibrit() {
        return Karate.run("hibrit/SpotifyHibrit.feature").relativeTo(getClass());
    }
## EndToEnd Runner
    @Karate.Test
    Karate testEndToEnd() {
        return Karate.run("hibrit/SpotifyEndToEnd.feature").relativeTo(getClass());
    }

# Steps
### UI Steps
 * "https://open.spotify.com" adresine gidilir.
 * "Oturum Aç" butonuna tıklanır.
 * "Kullanıcı adı" alanına geçerli kullanıcı adı girilir.
 * "Şifre" alanına geçerli bir şifre girilir.
 * "Oturum Aç" butonuna tıklanır.
 * "Çalma Listesi Oluştur" butonuna tıklanır.
 * Çalma listesi adı "MentorLabs Challange" olarak değiştirilir.
 * Sayfada bulunan "şarkı arama" alanına "Daft Punk" girilir.
 * İlk sıradaki şarkı listeye eklenir.

### Api Steps
* Bir çalma listesi oluşturulur.
* "Bohemian Rhapsody" ismi ile şarkı search isteği gerçekleştirilir.
* İlgili arama sonucu içerisinden herhangi bir şarkı, oluşturulan çalma listesine eklenir.

### Hibrit Steps
* Sisteme başarılı şekilde giriş yapılır.
* "MentorLabs Faz2" çalma listesi oluşturulur.(API)
* "The Final Countdown" şarkısı listeye eklenir.(API)
* İlgili parça oynatılır.
* Doğru parçanın oynatıldığı kontrol edilir.(API)

### EndToEnd Steps
* Sisteme başarılı şekilde giriş yapılır.
* Arama kısmından "Listeler" açılır.
* "En İyi 50 - Türkiye" çalma listesi açılır.
* İlgili çalma listesinden 5 adet şarkı beğenilen şarkılara eklenir.(API)
* Kullanıcı profiline gidilir.
* Kullanıcı adı "MentorLabs Challange" olarak değiştirilir.
* "Beğenilen Şarkılar" açılır.
* İlgili listeden şarkı çalınır.
* Sistemden çıkış işlemi sağlanır. 


# Getting Started (Gereksinimler) 
Karate requires Java 8 (at least version 1.8.0_112 or greater) (Java jdk 1.8 sürümü ve üzeri)
https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

### Configure (Yapılandırmalar)
**Api token & User id**
* You must change userID and apiToken in features to work api test.
* Api testin çalışabilmesi için userID ve apiToken değişkenleri değiştirilmelidir.

**Intellij**
https://www.jetbrains.com/idea/download/#section=windows (Maven, Gradle or Eclipse to be installed.)

**Cucumber Plugin**
(cucumber for java)

**Karate Github**
""https://github.com/intuit/karate""


# Running in IntelliJ
If you use IntelliJ IDEA, Cucumber support is built-in, and you can even select a single Scenario within a Feature to run at a time.
If you are using the free Community Edition, you can easily install the "Gherkin" and "Cucumber for Java" plugins.

# Maven Dependency
'karate-apache' should be add as a dependency on pom.xml so it will be installed automatically
```
 <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <java.version>1.8</java.version>
        <maven.compiler.version>3.8.1</maven.compiler.version>
        <maven.surefire.version>2.22.2</maven.surefire.version>
        <karate.version>1.1.0</karate.version>
    </properties>

    <dependencies>
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-junit5</artifactId>
            <version>${karate.version}</version>
            <scope>test</scope>
        </dependency>
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-ui</artifactId>
            <version>0.9.5.RC3</version>
        </dependency>
    </dependencies>

    <build>
        <testResources>
            <testResource>
                <directory>src/test/java</directory>
                <excludes>
                    <exclude>**/*.java</exclude>
                </excludes>
            </testResource>
        </testResources>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>${maven.compiler.version}</version>
                <configuration>
                    <encoding>UTF-8</encoding>
                    <source>${java.version}</source>
                    <target>${java.version}</target>
                    <compilerArgument>-Werror</compilerArgument>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>${maven.surefire.version}</version>
                <configuration>
                    <argLine>-Dfile.encoding=UTF-8</argLine>
                </configuration>
            </plugin>
        </plugins>
    </build>

```

