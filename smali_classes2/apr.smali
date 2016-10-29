.class Lapr;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lcom/twitter/model/core/TwitterUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapq;


# direct methods
.method constructor <init>(Lapq;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lapr;->a:Lapq;

    invoke-direct {p0}, Lcmv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/model/core/TwitterUser;
    .locals 1

    .prologue
    .line 59
    invoke-static {p1}, Lcom/twitter/library/provider/dm;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lapr;->a(Landroid/database/Cursor;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v0

    return-object v0
.end method
