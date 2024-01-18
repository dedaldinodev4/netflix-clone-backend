import { IBase } from "./Base";


export interface IView extends IBase, IViewRequest {}

export interface IViewRequest {
  comment: string;
  watched_time: Date;
  rating: number;
  id_user: string;
  id_content: string;
}

export interface IUpdateViewRequest {
  comment: string;
  watched_time: Date;
  rating: number;
}