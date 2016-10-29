.class Labp;
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
        "Lbpu;",
        "Lcom/twitter/model/livevideo/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Labl;


# direct methods
.method constructor <init>(Labl;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Labp;->a:Labl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbpu;)Lcom/twitter/model/livevideo/d;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p1, Lbpu;->f:Lcom/twitter/model/livevideo/d;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    check-cast p1, Lbpu;

    invoke-virtual {p0, p1}, Labp;->a(Lbpu;)Lcom/twitter/model/livevideo/d;

    move-result-object v0

    return-object v0
.end method
