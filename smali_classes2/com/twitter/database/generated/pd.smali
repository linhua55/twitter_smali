.class Lcom/twitter/database/generated/pd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbec;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/ou;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/ou;)V
    .locals 0

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/twitter/database/generated/pd;->a:Lcom/twitter/database/generated/ou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/twitter/database/generated/pd;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xce

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
