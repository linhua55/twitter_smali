.class final Lcom/twitter/database/generated/mr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbhp;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbeq;

.field private final c:Lbeo;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/twitter/database/generated/mr;->a:Landroid/database/Cursor;

    .line 211
    new-instance v0, Lcom/twitter/database/generated/ms;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ms;-><init>(Lcom/twitter/database/generated/mr;)V

    iput-object v0, p0, Lcom/twitter/database/generated/mr;->b:Lbeq;

    .line 428
    new-instance v0, Lcom/twitter/database/generated/mt;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/mt;-><init>(Lcom/twitter/database/generated/mr;)V

    iput-object v0, p0, Lcom/twitter/database/generated/mr;->c:Lbeo;

    .line 512
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/mq;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/mr;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/mr;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/twitter/database/generated/mr;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/twitter/database/generated/mr;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
