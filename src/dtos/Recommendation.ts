import { IBase } from "./Base";


export interface IRecommendation extends IBase, IRecommendationRequest {}

export interface IRecommendationRequest {
  score_relevance: number;
  algorithm: string | null;
  id_user: string;
  id_content: string;
}

export interface IUpdateRecommendationRequest {
  score_relevance: number;
  algorithm: string | null;
}