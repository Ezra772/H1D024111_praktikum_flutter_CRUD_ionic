import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class ApiService {
  constructor(public http: HttpClient) {}

  apiURL() {
    return 'http://localhost/apiCoba';
  }

  private getFullUrl(endpoint: string): string {
    const ep = endpoint.startsWith('/') ? endpoint.slice(1) : endpoint;
    return `${this.apiURL()}/${ep}`;
  }

  tambah(data: any, endpoint: string) {
    return this.http.post(this.getFullUrl(endpoint), data);
  }

  edit(data: any, endpoint: string) {
    return this.http.put(this.getFullUrl(endpoint), data);
  }

  tampil(endpoint: string): Observable<any> {
    return this.http.get(this.getFullUrl(endpoint));
  }

  hapus(id: any, endpoint: string) {
    console.log(id);
    return this.http.delete(this.getFullUrl(endpoint) + id);
  }

  lihat(id: any, endpoint: string) {
    return this.http.get(this.getFullUrl(endpoint) + id);
  }
}
