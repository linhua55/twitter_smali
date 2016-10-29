.class Lcom/twitter/library/provider/bg;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/twitter/library/provider/bg;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 132
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "scribe"

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/twitter/database/model/n;->a([Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/twitter/library/provider/bg;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0, v3}, Lcom/twitter/library/provider/au;->b(Lcom/twitter/library/provider/au;Z)Z

    .line 134
    return-void
.end method
