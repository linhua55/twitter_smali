.class Lcom/twitter/library/provider/ac;
.super Lbao;
.source "Twttr"


# instance fields
.field final synthetic b:Lcom/twitter/library/provider/v;


# direct methods
.method constructor <init>(Lcom/twitter/library/provider/v;I)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/twitter/library/provider/ac;->b:Lcom/twitter/library/provider/v;

    invoke-direct {p0, p2}, Lbao;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/database/model/n;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 212
    invoke-static {p2}, Lcom/twitter/library/provider/v;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    return-void
.end method
