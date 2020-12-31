int, long, unsigned int. there's no floating-point type. apply ◊bold{the usual arithmetic conversions}.

(int) j * k: compute as ◊t{int} * ◊t{unsigned int}. the result (name it JK) ◊val will have ◊t{unsigned int}. as ◊t{int} is narrower than ◊t{unsigned int}.
i + JK: compute as ◊t{int} * ◊t{unsigned int}. the result ◊val will have ◊t{unsigned int}.
