.class Lcom/twitter/database/generated/gl;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeo;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/gd;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/gd;)V
    .locals 0

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/twitter/database/generated/gl;->a:Lcom/twitter/database/generated/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/twitter/database/generated/gl;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
