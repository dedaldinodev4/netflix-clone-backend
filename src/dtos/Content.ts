import { IBase } from "./Base";


export interface IContent extends IBase, IContentRequest {}

export interface IContentRequest {
  title: string;
  description: string | null;
  duration: string;
  date_publish: Date;
  id_catalog: string;
}

export interface IUpdateContentRequest {
  title: string;
  description: string | null;
  duration: string;
  date_publish: Date;
}