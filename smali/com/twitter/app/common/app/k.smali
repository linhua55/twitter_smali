.class Lcom/twitter/app/common/app/k;
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
        "Lcom/twitter/app/common/account/UserIdentifier;",
        "Lcom/twitter/app/common/app/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/app/common/app/TwitterApplication;


# direct methods
.method constructor <init>(Lcom/twitter/app/common/app/TwitterApplication;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/twitter/app/common/app/k;->a:Lcom/twitter/app/common/app/TwitterApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/app/o;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/twitter/app/common/app/l;->r()Lcom/twitter/app/common/app/l;

    move-result-object v0

    new-instance v1, Lcom/twitter/app/common/app/internal/ah;

    invoke-direct {v1, p1}, Lcom/twitter/app/common/app/internal/ah;-><init>(Lcom/twitter/app/common/account/UserIdentifier;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/twitter/app/common/app/l;->a(Lcom/twitter/app/common/app/internal/ah;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    check-cast p1, Lcom/twitter/app/common/account/UserIdentifier;

    invoke-virtual {p0, p1}, Lcom/twitter/app/common/app/k;->a(Lcom/twitter/app/common/account/UserIdentifier;)Lcom/twitter/app/common/app/o;

    move-result-object v0

    return-object v0
.end method
