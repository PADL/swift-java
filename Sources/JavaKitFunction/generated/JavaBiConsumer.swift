// Auto-generated by Java-to-Swift wrapper generator.
import JavaKit
import JavaRuntime

@JavaInterface("java.util.function.BiConsumer")
public struct JavaBiConsumer<T: AnyJavaObject, U: AnyJavaObject> {
  @JavaMethod
  public func accept(_ arg0: JavaObject?, _ arg1: JavaObject?)

  @JavaMethod
  public func andThen(_ arg0: JavaBiConsumer<JavaObject, JavaObject>?) -> JavaBiConsumer<
    JavaObject, JavaObject
  >?
}
