.class Lccy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/android/gms/maps/k;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/c;

.field final synthetic b:Lcom/google/android/gms/maps/a;

.field final synthetic c:Lccs;


# direct methods
.method constructor <init>(Lccs;Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/a;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lccy;->c:Lccs;

    iput-object p2, p0, Lccy;->a:Lcom/google/android/gms/maps/c;

    iput-object p3, p0, Lccy;->b:Lcom/google/android/gms/maps/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lccy;->a:Lcom/google/android/gms/maps/c;

    iget-object v1, p0, Lccy;->b:Lcom/google/android/gms/maps/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 278
    iget-object v0, p0, Lccy;->a:Lcom/google/android/gms/maps/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/k;)V

    .line 279
    return-void
.end method
