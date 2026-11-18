-- GENESIS: habilitar eliminacion de productos y servicios para usuarios autenticados.
-- Ejecutar una sola vez en Supabase > SQL Editor > New query.

alter table public.products enable row level security;
drop policy if exists "Authenticated users can delete products" on public.products;
create policy "Authenticated users can delete products"
  on public.products for delete to authenticated using (true);

alter table public.service_prices enable row level security;
drop policy if exists "Authenticated users can delete service prices" on public.service_prices;
create policy "Authenticated users can delete service prices"
  on public.service_prices for delete to authenticated using (true);
