.class Lcom/twitter/android/moments/data/bm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Ljava/lang/String;",
        "Lcrc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/bl;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/bl;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/twitter/android/moments/data/bm;->a:Lcom/twitter/android/moments/data/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcrc;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/twitter/android/moments/data/bm;->a:Lcom/twitter/android/moments/data/bl;

    invoke-static {v0}, Lcom/twitter/android/moments/data/bl;->a(Lcom/twitter/android/moments/data/bl;)Lcep;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcep;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrc;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/bm;->a(Ljava/lang/String;)Lcrc;

    move-result-object v0

    return-object v0
.end method
