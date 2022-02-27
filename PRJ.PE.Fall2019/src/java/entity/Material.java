/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author tuan anh
 */
public class Material {

    private String content;
    private boolean inCurriculum;

    public Material() {
    }

    public Material(String content, boolean inCurriculum) {
        this.content = content;
        this.inCurriculum = inCurriculum;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public boolean isInCurriculum() {
        return inCurriculum;
    }

    public void setInCurriculum(boolean inCurriculum) {
        this.inCurriculum = inCurriculum;
    }

    @Override
    public String toString() {
        return "Material{" + "content=" + content + ", inCurriculum=" + inCurriculum + '}';
    }

}
