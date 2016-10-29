.class Lcom/twitter/database/generated/ly;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbek;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/lp;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/lp;)V
    .locals 0

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/twitter/database/generated/ly;->a:Lcom/twitter/database/generated/lp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/twitter/database/generated/ly;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x95

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
