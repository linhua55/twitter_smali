.class Lcom/twitter/database/generated/ay;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbca;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/aw;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/aw;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/twitter/database/generated/ay;->a:Lcom/twitter/database/generated/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/twitter/database/generated/ay;->a:Lcom/twitter/database/generated/aw;

    invoke-static {v0}, Lcom/twitter/database/generated/aw;->a(Lcom/twitter/database/generated/aw;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
