.class public abstract Lwu;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field protected final a:Lcom/twitter/model/dms/ap;

.field protected final b:Lclj;

.field protected final c:Ljava/lang/String;

.field protected final d:J

.field protected final e:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/twitter/model/dms/ap;Lclj;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lwu;->e:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lwu;->c:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lwu;->b:Lclj;

    .line 31
    iput-wide p3, p0, Lwu;->d:J

    .line 32
    iput-object p5, p0, Lwu;->a:Lcom/twitter/model/dms/ap;

    .line 33
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lwu;->d:J

    return-wide v0
.end method
