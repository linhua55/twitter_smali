.class Lcom/twitter/database/generated/mt;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeo;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/mr;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/mr;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/twitter/database/generated/mt;->a:Lcom/twitter/database/generated/mr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/twitter/database/generated/mt;->a:Lcom/twitter/database/generated/mr;

    invoke-static {v0}, Lcom/twitter/database/generated/mr;->a(Lcom/twitter/database/generated/mr;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
