.class Lbac;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbab;


# direct methods
.method constructor <init>(Lbab;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lbac;->a:Lbab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/service/x;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TT;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lbac;->a:Lbab;

    invoke-virtual {v0, p1}, Lbab;->a(Lcom/twitter/library/service/x;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    check-cast p1, Lcom/twitter/library/service/x;

    invoke-virtual {p0, p1}, Lbac;->a(Lcom/twitter/library/service/x;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
