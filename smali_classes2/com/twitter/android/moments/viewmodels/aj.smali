.class public Lcom/twitter/android/moments/viewmodels/aj;
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
        "Lclm;",
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
.method public a(Lclm;)Lcom/twitter/android/moments/viewmodels/ai;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/twitter/android/moments/viewmodels/ai;

    invoke-direct {v0, p1}, Lcom/twitter/android/moments/viewmodels/ai;-><init>(Lclm;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lclm;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/viewmodels/aj;->a(Lclm;)Lcom/twitter/android/moments/viewmodels/ai;

    move-result-object v0

    return-object v0
.end method