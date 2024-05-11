// Created by linkkader on 15/11/2022

extension ProviderExtension<T> on T {
}

extension MapExt<K, V> on Map<K, V> {

  Map<K, V> get copy => {...this};


}