.class Lcom/twitter/library/provider/as;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/concurrent/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/concurrent/n",
        "<",
        "Lcom/twitter/database/schema/GlobalSchema;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/provider/ar;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ar;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/twitter/library/provider/as;->a:Lcom/twitter/library/provider/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/database/schema/GlobalSchema;
    .locals 3

    .prologue
    .line 113
    const-class v0, Lcom/twitter/database/schema/GlobalSchema;

    new-instance v1, Lbax;

    iget-object v2, p0, Lcom/twitter/library/provider/as;->a:Lcom/twitter/library/provider/ar;

    invoke-direct {v1, v2}, Lbax;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    invoke-static {v0, v1}, Lcom/twitter/database/model/m;->a(Ljava/lang/Class;Lcom/twitter/database/model/b;)Lcom/twitter/database/model/l;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/schema/GlobalSchema;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/twitter/library/provider/as;->a()Lcom/twitter/database/schema/GlobalSchema;

    move-result-object v0

    return-object v0
.end method
