package models

import "gorm.io/gorm"

type Users struct {
	gorm.Model
	name  string `json:"question" gorm:"text;not null;default:null`
	email string `json:"question" gorm:"text;not null;default:null`
}
