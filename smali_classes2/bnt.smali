.class public Lbnt;
.super Lbnu;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/dms/b;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lbnu;-><init>(Landroid/database/Cursor;)V

    .line 20
    new-instance v0, Lbnq;

    invoke-direct {v0}, Lbnq;-><init>()V

    .line 21
    invoke-virtual {v0, p1}, Lbnq;->b(Landroid/database/Cursor;)Lcom/twitter/model/dms/b;

    move-result-object v0

    iput-object v0, p0, Lbnt;->a:Lcom/twitter/model/dms/b;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/dms/b;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lbnt;->a:Lcom/twitter/model/dms/b;

    return-object v0
.end method
