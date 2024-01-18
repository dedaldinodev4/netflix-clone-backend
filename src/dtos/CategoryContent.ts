import { IBase } from "./Base";


export interface ICategoryContent extends IBase, ICategoryContentRequest {}

export interface ICategoryContentRequest {
  id_category: string;
  id_content: string;
}