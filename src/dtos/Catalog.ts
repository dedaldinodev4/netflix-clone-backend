import { IBase } from "./Base";


export interface ICatalog extends IBase, ICatalogRequest {}

export interface ICatalogRequest {
  name: string;
  description: string | null;
}

export interface IUpdateCatalogRequest {
  name: string;
  description: string | null;
}