import { IBase } from "./Base";


export interface IFavoriteContent extends IBase, IFavoriteContentRequest {}

export interface IFavoriteContentRequest {
  id_favorite: string;
  id_content: string;
}