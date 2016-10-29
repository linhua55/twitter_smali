.class Lcom/twitter/database/generated/kp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbcs;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/kn;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/kn;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/twitter/database/generated/kp;->a:Lcom/twitter/database/generated/kn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/twitter/database/generated/kp;->a:Lcom/twitter/database/generated/kn;

    invoke-static {v0}, Lcom/twitter/database/generated/kn;->a(Lcom/twitter/database/generated/kn;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
