# 专门适配 Ruby 4.0 环境的静态页面渲染补丁
if !String.method_defined?(:tainted?)
  class Object
    def tainted?
      false
    end
    def taint
      self
    end
    def untaint
      self
    end
  end
end