.class Lcom/twitter/library/provider/fe;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/ea;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/ea;I)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/twitter/library/provider/fe;->b:Lcom/twitter/library/provider/ea;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 113
    invoke-static {p2}, Lcom/twitter/library/provider/dm;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    return-void
.end method
