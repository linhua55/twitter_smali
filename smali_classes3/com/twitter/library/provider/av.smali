.class Lcom/twitter/library/provider/av;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/au;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/au;I)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/twitter/library/provider/av;->b:Lcom/twitter/library/provider/au;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 116
    iget-object v0, p0, Lcom/twitter/library/provider/av;->b:Lcom/twitter/library/provider/au;

    sget v1, Lcso;->a:I

    invoke-static {v0, v1}, Lcom/twitter/library/provider/au;->a(Lcom/twitter/library/provider/au;I)I

    .line 117
    iget-object v0, p0, Lcom/twitter/library/provider/av;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0, v2}, Lcom/twitter/library/provider/au;->a(Lcom/twitter/library/provider/au;Z)Z

    .line 118
    iget-object v0, p0, Lcom/twitter/library/provider/av;->b:Lcom/twitter/library/provider/au;

    invoke-static {v0, v2}, Lcom/twitter/library/provider/au;->b(Lcom/twitter/library/provider/au;Z)Z

    .line 119
    return-void
.end method
