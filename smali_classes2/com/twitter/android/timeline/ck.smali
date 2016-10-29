.class public Lcom/twitter/android/timeline/ck;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field final a:Lcom/twitter/android/timeline/bj;

.field final b:J

.field final c:Lcom/twitter/model/timeline/al;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Lcss;

.field h:Lcom/twitter/model/topic/i;

.field i:Z

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:I

.field m:I


# direct methods
.method public constructor <init>(Lcom/twitter/android/timeline/bj;JLcom/twitter/model/timeline/al;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/twitter/android/timeline/ck;->a:Lcom/twitter/android/timeline/bj;

    .line 60
    iput-wide p2, p0, Lcom/twitter/android/timeline/ck;->b:J

    .line 61
    iput-object p4, p0, Lcom/twitter/android/timeline/ck;->c:Lcom/twitter/model/timeline/al;

    .line 62
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/timeline/cj;
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/twitter/android/timeline/cj;

    invoke-direct {v0, p0}, Lcom/twitter/android/timeline/cj;-><init>(Lcom/twitter/android/timeline/ck;)V

    return-object v0
.end method

.method public a(I)Lcom/twitter/android/timeline/ck;
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/twitter/android/timeline/ck;->l:I

    .line 115
    return-object p0
.end method

.method public a(Lcom/twitter/model/topic/i;)Lcom/twitter/android/timeline/ck;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/twitter/android/timeline/ck;->h:Lcom/twitter/model/topic/i;

    .line 91
    return-object p0
.end method

.method public a(Lcss;)Lcom/twitter/android/timeline/ck;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/android/timeline/ck;->g:Lcss;

    .line 85
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/android/timeline/ck;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/twitter/android/timeline/ck;->d:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public a(Z)Lcom/twitter/android/timeline/ck;
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/twitter/android/timeline/ck;->i:Z

    .line 97
    return-object p0
.end method

.method public b(I)Lcom/twitter/android/timeline/ck;
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/twitter/android/timeline/ck;->m:I

    .line 121
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/android/timeline/ck;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/twitter/android/timeline/ck;->e:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/android/timeline/ck;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/twitter/android/timeline/ck;->f:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/android/timeline/ck;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/twitter/android/timeline/ck;->j:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/twitter/android/timeline/ck;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/twitter/android/timeline/ck;->k:Ljava/lang/String;

    .line 109
    return-object p0
.end method
