package cz.czechitas.java2webapps.ukol5.freemarker;

import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelException;

import java.lang.reflect.InvocationTargetException;

/**
 * @author Filip Jirsák
 */
class RecordModel implements TemplateHashModel {
    private final Java17ObjectWrapper java17ObjectWrapper;
    private final Record value;

    public RecordModel(Java17ObjectWrapper java17ObjectWrapper, Record value) {
        this.java17ObjectWrapper = java17ObjectWrapper;
        this.value = value;
    }

    @Override
    public TemplateModel get(String key) throws TemplateModelException {
        try {
            Object propertyValue = value.getClass()
                    .getMethod(key)
                    .invoke(value);
            return java17ObjectWrapper.wrap(propertyValue);
        } catch (IllegalAccessException | InvocationTargetException | NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean isEmpty() throws TemplateModelException {
        return false;
    }
}
