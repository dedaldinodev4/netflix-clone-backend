import { IBase } from "./Base";


export interface ICategory extends IBase, ICategoryRequest {}

export interface ICategoryRequest {
  name: string;
}