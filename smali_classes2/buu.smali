.class public Lbuu;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:[J

.field b:[Ljava/lang/String;

.field c:[Ljava/lang/String;

.field d:I

.field e:J

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field i:I

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/TwitterUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lbuu;->i:I

    return v0
.end method

.method public a(I)Lbuu;
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lbuu;->d:I

    .line 133
    return-object p0
.end method

.method public a(J)Lbuu;
    .locals 1

    .prologue
    .line 137
    iput-wide p1, p0, Lbuu;->e:J

    .line 138
    return-object p0
.end method

.method a(Lbuu;)Lbuu;
    .locals 2

    .prologue
    .line 160
    iget v0, p1, Lbuu;->d:I

    iput v0, p0, Lbuu;->d:I

    .line 161
    iget-wide v0, p1, Lbuu;->e:J

    iput-wide v0, p0, Lbuu;->e:J

    .line 162
    iget-object v0, p1, Lbuu;->f:Ljava/lang/String;

    iput-object v0, p0, Lbuu;->f:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lbuu;->g:Ljava/lang/String;

    iput-object v0, p0, Lbuu;->g:Ljava/lang/String;

    .line 164
    iget-boolean v0, p1, Lbuu;->h:Z

    iput-boolean v0, p0, Lbuu;->h:Z

    .line 165
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lbuu;
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lbuu;->g:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public a(Z)Lbuu;
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lbuu;->h:Z

    .line 153
    return-object p0
.end method

.method public a([J)Lbuu;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lbuu;->a:[J

    .line 128
    return-object p0
.end method

.method public a([Ljava/lang/String;)Lbuu;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lbuu;->b:[Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lbuu;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b([Ljava/lang/String;)Lbuu;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lbuu;->c:[Ljava/lang/String;

    .line 123
    return-object p0
.end method
