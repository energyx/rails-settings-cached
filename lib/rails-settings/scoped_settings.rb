module RailsSettings
  class ScopedSettings < Base
    def self.for_thing(object, settings_scope)
      @object = object
      @settings_scope = settings_scope
      self
    end

    def self.thing_scoped
      unscoped.where(thing_type: @object.class.base_class.to_s, thing_id: @object.id)
    end
  end
end
