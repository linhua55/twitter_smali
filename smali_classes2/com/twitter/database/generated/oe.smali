.class Lcom/twitter/database/generated/oe;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbij;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/od;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/od;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/twitter/database/generated/oe;->a:Lcom/twitter/database/generated/od;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/twitter/database/generated/oe;->a:Lcom/twitter/database/generated/od;

    invoke-static {v0}, Lcom/twitter/database/generated/od;->a(Lcom/twitter/database/generated/od;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
