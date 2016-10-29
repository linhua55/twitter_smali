.class Lccw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/android/gms/maps/v;


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/a;

.field final synthetic b:Lcom/twitter/model/geo/d;

.field final synthetic c:Lccq;

.field final synthetic d:Lccs;


# direct methods
.method constructor <init>(Lccs;Lcom/google/android/gms/maps/a;Lcom/twitter/model/geo/d;Lccq;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lccw;->d:Lccs;

    iput-object p2, p0, Lccw;->a:Lcom/google/android/gms/maps/a;

    iput-object p3, p0, Lccw;->b:Lcom/twitter/model/geo/d;

    iput-object p4, p0, Lccw;->c:Lccq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lccw;->d:Lccs;

    invoke-static {v0}, Lccs;->a(Lccs;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lccw;->d:Lccs;

    invoke-static {v1}, Lccs;->b(Lccs;)V

    .line 203
    iget-object v1, p0, Lccw;->d:Lccs;

    iget-object v2, p0, Lccw;->a:Lcom/google/android/gms/maps/a;

    invoke-static {v1, v0, v2}, Lccs;->a(Lccs;Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/a;)V

    .line 204
    iget-object v1, p0, Lccw;->d:Lccs;

    iget-object v2, p0, Lccw;->b:Lcom/twitter/model/geo/d;

    invoke-static {v1, v0, v2}, Lccs;->a(Lccs;Lcom/google/android/gms/maps/c;Lcom/twitter/model/geo/d;)V

    .line 205
    iget-object v1, p0, Lccw;->d:Lccs;

    iget-object v2, p0, Lccw;->c:Lccq;

    invoke-static {v1, v0, v2}, Lccs;->a(Lccs;Lcom/google/android/gms/maps/c;Lccq;)V

    .line 206
    return-void
.end method
