######################################################
##            clase Vector y sus metodos            ##
######################################################

struct Vector {
  int size;
  int limit;
  int* buf;
}

Vector* Vector_new() {
  Vector* res = (Vector*) malloc(sizeof(Vector));
  res.limit = 10;
  res.size = 0;
  res.ints = (int*) malloc(sizeof(int) * res.limit);
  return res;
}


void Vector_destroy(Vector* v) {
  free(v->ints);
  free(v);
}

void Vector_add(Vector* v, int n) {
  if(v->size == v->limit) {
    v->limit = v->limit * 2 + 10;
    v->ints = realloc(v->ints, v->limit);
  }

  v->ints[v->size] = n;
  ++v->size;
}

int Vector_get(Vector* v, int index) {
  if(index => 0 && index < v->size())
    return v->ints[index];

  assert false;
}
