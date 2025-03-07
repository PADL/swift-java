// Auto-generated by Java-to-Swift wrapper generator.
import JavaRuntime

@JavaClass("java.lang.Short", extends: JavaNumber.self)
public struct JavaShort {
  @JavaMethod
  public init(_ arg0: Int16, environment: JNIEnvironment? = nil)

  @JavaMethod
  public init(_ arg0: String, environment: JNIEnvironment? = nil) throws

  @JavaMethod
  public func equals(_ arg0: JavaObject?) -> Bool

  @JavaMethod
  public func toString() -> String

  @JavaMethod
  public func hashCode() -> Int32

  @JavaMethod
  public func compareTo(_ arg0: JavaShort?) -> Int32

  @JavaMethod
  public func compareTo(_ arg0: JavaObject?) -> Int32

  @JavaMethod
  public func byteValue() -> Int8

  @JavaMethod
  public func shortValue() -> Int16

  @JavaMethod
  public func intValue() -> Int32

  @JavaMethod
  public func longValue() -> Int64

  @JavaMethod
  public func floatValue() -> Float

  @JavaMethod
  public func doubleValue() -> Double

  @JavaMethod
  public func getClass() -> JavaClass<JavaObject>!

  @JavaMethod
  public func notify()

  @JavaMethod
  public func notifyAll()

  @JavaMethod
  public func wait(_ arg0: Int64) throws

  @JavaMethod
  public func wait(_ arg0: Int64, _ arg1: Int32) throws

  @JavaMethod
  public func wait() throws
}
extension JavaClass<JavaShort> {
  @JavaStaticField(isFinal: true)
  public var MIN_VALUE: Int16

  @JavaStaticField(isFinal: true)
  public var MAX_VALUE: Int16

  @JavaStaticField(isFinal: true)
  public var TYPE: JavaClass<JavaShort>!

  @JavaStaticField(isFinal: true)
  public var SIZE: Int32

  @JavaStaticField(isFinal: true)
  public var BYTES: Int32

  @JavaStaticMethod
  public func toString(_ arg0: Int16) -> String

  @JavaStaticMethod
  public func hashCode(_ arg0: Int16) -> Int32

  @JavaStaticMethod
  public func compareUnsigned(_ arg0: Int16, _ arg1: Int16) -> Int32

  @JavaStaticMethod
  public func reverseBytes(_ arg0: Int16) -> Int16

  @JavaStaticMethod
  public func compare(_ arg0: Int16, _ arg1: Int16) -> Int32

  @JavaStaticMethod
  public func valueOf(_ arg0: String, _ arg1: Int32) throws -> JavaShort!

  @JavaStaticMethod
  public func valueOf(_ arg0: String) throws -> JavaShort!

  @JavaStaticMethod
  public func valueOf(_ arg0: Int16) -> JavaShort!

  @JavaStaticMethod
  public func decode(_ arg0: String) throws -> JavaShort!

  @JavaStaticMethod
  public func toUnsignedLong(_ arg0: Int16) -> Int64

  @JavaStaticMethod
  public func toUnsignedInt(_ arg0: Int16) -> Int32

  @JavaStaticMethod
  public func parseShort(_ arg0: String) throws -> Int16

  @JavaStaticMethod
  public func parseShort(_ arg0: String, _ arg1: Int32) throws -> Int16
}
