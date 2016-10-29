.class Lcom/twitter/database/generated/is;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeg;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/iq;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/iq;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/twitter/database/generated/is;->a:Lcom/twitter/database/generated/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/twitter/database/generated/is;->a:Lcom/twitter/database/generated/iq;

    invoke-static {v0}, Lcom/twitter/database/generated/iq;->a(Lcom/twitter/database/generated/iq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
