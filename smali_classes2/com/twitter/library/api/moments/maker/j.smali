.class Lcom/twitter/library/api/moments/maker/j;
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
        "Lcom/twitter/model/moments/maker/y;",
        "Lcom/twitter/model/moments/maker/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/twitter/library/api/moments/maker/i;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/moments/maker/i;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/j;->b:Lcom/twitter/library/api/moments/maker/i;

    iput-object p2, p0, Lcom/twitter/library/api/moments/maker/j;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/maker/y;)Lcom/twitter/model/moments/maker/y;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/library/api/moments/maker/j;->a:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/twitter/model/moments/maker/y;->a(Ljava/lang/Integer;)Lcom/twitter/model/moments/maker/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/twitter/model/moments/maker/y;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/moments/maker/j;->a(Lcom/twitter/model/moments/maker/y;)Lcom/twitter/model/moments/maker/y;

    move-result-object v0

    return-object v0
.end method
