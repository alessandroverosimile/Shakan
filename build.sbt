// See README.md for license details.

ThisBuild / scalaVersion     := "2.13.8"
ThisBuild / version          := "0.1.0"
ThisBuild / organization     := "%ORGANIZATION%"

val chiselVersion = "3.5.2"

lazy val root = (project in file("."))
  .settings(
    name := "%NAME%",
    //libraryDependencies += "com.sifive" %% "chisel-circt" % "0.8.0",
    //libraryDependencies += "org.chipsalliance" % "llvm-firtool" % "1.51.0",
    libraryDependencies ++= Seq(
      "edu.berkeley.cs" %% "chisel3" % chiselVersion,
      "edu.berkeley.cs" %% "chiseltest" % "0.5.4"
    ),
    scalacOptions ++= Seq(
      "-language:reflectiveCalls",
      "-deprecation",
      "-feature",
      "-Xcheckinit",
      "-Ymacro-annotations",
      //"-P:chiselplugin:genBundleElements",
    ),

    addCompilerPlugin("edu.berkeley.cs" %% "chisel3-plugin" % chiselVersion cross CrossVersion.full),
  )

