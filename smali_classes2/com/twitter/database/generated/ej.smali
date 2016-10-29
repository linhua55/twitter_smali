.class Lcom/twitter/database/generated/ej;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeg;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/ei;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/ei;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/twitter/database/generated/ej;->a:Lcom/twitter/database/generated/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/twitter/database/generated/ej;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
