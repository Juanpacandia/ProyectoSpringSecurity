/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websystique.springmvc.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author jpcan
 */
@Entity
@Table(name = "themes_forum")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ThemesForum.findAll", query = "SELECT t FROM ThemesForum t")
    , @NamedQuery(name = "ThemesForum.findById", query = "SELECT t FROM ThemesForum t WHERE t.id = :id")
    , @NamedQuery(name = "ThemesForum.findByTheme", query = "SELECT t FROM ThemesForum t WHERE t.theme = :theme")})
public class ThemesForum implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "theme")
    private String theme;

    public ThemesForum() {
    }

    public ThemesForum(Integer id) {
        this.id = id;
    }

    public ThemesForum(Integer id, String theme) {
        this.id = id;
        this.theme = theme;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ThemesForum)) {
            return false;
        }
        ThemesForum other = (ThemesForum) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.websystique.springmvc.model.ThemesForum[ id=" + id + " ]";
    }
    
}
