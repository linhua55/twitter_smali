.class final Lcom/twitter/database/generated/dy;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbdy;


# instance fields
.field private final a:Landroid/database/Cursor;

.field private final b:Lbeg;

.field private final c:Lbcs;

.field private final d:Lbeq;

.field private final e:Lbeq;

.field private final f:Lbec;

.field private final g:Lbee;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lcom/twitter/database/generated/dy;->a:Landroid/database/Cursor;

    .line 395
    new-instance v0, Lcom/twitter/database/generated/dz;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/dz;-><init>(Lcom/twitter/database/generated/dy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/dy;->b:Lbeg;

    .line 573
    new-instance v0, Lcom/twitter/database/generated/ea;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ea;-><init>(Lcom/twitter/database/generated/dy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/dy;->c:Lbcs;

    .line 599
    new-instance v0, Lcom/twitter/database/generated/eb;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/eb;-><init>(Lcom/twitter/database/generated/dy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/dy;->d:Lbeq;

    .line 816
    new-instance v0, Lcom/twitter/database/generated/ec;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ec;-><init>(Lcom/twitter/database/generated/dy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/dy;->e:Lbeq;

    .line 1033
    new-instance v0, Lcom/twitter/database/generated/ed;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ed;-><init>(Lcom/twitter/database/generated/dy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/dy;->f:Lbec;

    .line 1150
    new-instance v0, Lcom/twitter/database/generated/ee;

    invoke-direct {v0, p0}, Lcom/twitter/database/generated/ee;-><init>(Lcom/twitter/database/generated/dy;)V

    iput-object v0, p0, Lcom/twitter/database/generated/dy;->g:Lbee;

    .line 1169
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/dx;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/dy;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/twitter/database/generated/dy;->a:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/twitter/database/generated/dy;->a:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
