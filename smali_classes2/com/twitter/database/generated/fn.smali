.class Lcom/twitter/database/generated/fn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeo;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/fl;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/fl;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/twitter/database/generated/fn;->a:Lcom/twitter/database/generated/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/twitter/database/generated/fn;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
