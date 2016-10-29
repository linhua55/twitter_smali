.class Lcom/twitter/library/media/manager/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/collection/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/collection/n",
        "<",
        "Lcom/twitter/library/media/manager/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/media/manager/l;


# direct methods
.method constructor <init>(Lcom/twitter/library/media/manager/l;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/twitter/library/media/manager/m;->a:Lcom/twitter/library/media/manager/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/media/manager/f;)I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 187
    check-cast p1, Lcom/twitter/library/media/manager/f;

    invoke-virtual {p0, p1}, Lcom/twitter/library/media/manager/m;->a(Lcom/twitter/library/media/manager/f;)I

    move-result v0

    return v0
.end method
