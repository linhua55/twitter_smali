.class public Lcom/twitter/android/moments/viewmodels/am;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/model/moments/ay;",
        "Lcom/twitter/android/moments/viewmodels/u;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/ay;)Lcom/twitter/android/moments/viewmodels/al;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/twitter/android/moments/viewmodels/al;

    invoke-direct {v0, p1}, Lcom/twitter/android/moments/viewmodels/al;-><init>(Lcom/twitter/model/moments/ay;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/twitter/model/moments/ay;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/viewmodels/am;->a(Lcom/twitter/model/moments/ay;)Lcom/twitter/android/moments/viewmodels/al;

    move-result-object v0

    return-object v0
.end method
