.class Lcom/twitter/database/generated/ih;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbec;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/hy;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/hy;)V
    .locals 0

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/twitter/database/generated/ih;->a:Lcom/twitter/database/generated/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/twitter/database/generated/ih;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x99

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
