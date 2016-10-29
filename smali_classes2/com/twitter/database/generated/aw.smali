.class final Lcom/twitter/database/generated/aw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbcg;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbbs;

.field private final c:Lbca;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/twitter/database/generated/aw;->a:Landroid/database/Cursor;

    .line 207
    new-instance v0, Lcom/twitter/database/generated/ax;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ax;-><init>(Lcom/twitter/database/generated/aw;)V

    iput-object v0, p0, Lcom/twitter/database/generated/aw;->b:Lbbs;

    .line 313
    new-instance v0, Lcom/twitter/database/generated/ay;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ay;-><init>(Lcom/twitter/database/generated/aw;)V

    iput-object v0, p0, Lcom/twitter/database/generated/aw;->c:Lbca;

    .line 425
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/av;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/aw;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/aw;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/twitter/database/generated/aw;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/twitter/database/generated/aw;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
