.class Lccz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/google/android/gms/maps/m;


# instance fields
.field final synthetic a:Lccq;

.field final synthetic b:Lccs;


# direct methods
.method constructor <init>(Lccs;Lccq;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lccz;->b:Lccs;

    iput-object p2, p0, Lccz;->a:Lccq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lccz;->b:Lccs;

    invoke-static {v0}, Lccs;->a(Lccs;)Lcom/google/android/gms/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->getMap()Lcom/google/android/gms/maps/c;

    move-result-object v0

    new-instance v1, Lcda;

    invoke-direct {v1, p0}, Lcda;-><init>(Lccz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/p;)V

    .line 302
    return-void
.end method
