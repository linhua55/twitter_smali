.class public Lcuc;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcub;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field c:I

.field d:Ljava/lang/String;

.field e:I

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcuc;
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcuc;->c:I

    .line 123
    return-object p0
.end method

.method public a(J)Lcuc;
    .locals 1

    .prologue
    .line 110
    iput-wide p1, p0, Lcuc;->a:J

    .line 111
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcuc;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcuc;->d:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public a(Z)Lcuc;
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcuc;->f:Z

    .line 135
    return-object p0
.end method

.method public b(I)Lcuc;
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcuc;->e:I

    .line 129
    return-object p0
.end method

.method public b(J)Lcuc;
    .locals 1

    .prologue
    .line 116
    iput-wide p1, p0, Lcuc;->b:J

    .line 117
    return-object p0
.end method

.method public b(Z)Lcuc;
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcuc;->g:Z

    .line 141
    return-object p0
.end method

.method public c(Z)Lcuc;
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcuc;->h:Z

    .line 147
    return-object p0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcuc;->e()Lcub;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcub;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcub;-><init>(Lcuc;Lctz;)V

    return-object v0
.end method
