.class final Lgp;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[I

.field public final d:[Lgs;

.field public final e:[Lgo;

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(II[I[Lgs;[Lgo;III)V
    .locals 0

    .prologue
    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    iput p1, p0, Lgp;->a:I

    .line 1172
    iput p2, p0, Lgp;->b:I

    .line 1173
    iput-object p3, p0, Lgp;->c:[I

    .line 1174
    iput-object p4, p0, Lgp;->d:[Lgs;

    .line 1175
    iput-object p5, p0, Lgp;->e:[Lgo;

    .line 1176
    iput p6, p0, Lgp;->f:I

    .line 1177
    iput p7, p0, Lgp;->g:I

    .line 1178
    iput p8, p0, Lgp;->h:I

    .line 1179
    return-void
.end method

.method public constructor <init>(Lgn;)V
    .locals 1

    .prologue
    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1183
    iget v0, p1, Lgn;->e:I

    iput v0, p0, Lgp;->a:I

    .line 1184
    iget v0, p1, Lgn;->g:I

    iput v0, p0, Lgp;->b:I

    .line 1185
    iget-object v0, p1, Lgn;->h:[I

    iput-object v0, p0, Lgp;->c:[I

    .line 1186
    iget-object v0, p1, Lgn;->i:[Lgs;

    iput-object v0, p0, Lgp;->d:[Lgs;

    .line 1187
    iget-object v0, p1, Lgn;->j:[Lgo;

    iput-object v0, p0, Lgp;->e:[Lgo;

    .line 1188
    iget v0, p1, Lgn;->k:I

    iput v0, p0, Lgp;->f:I

    .line 1189
    iget v0, p1, Lgn;->l:I

    iput v0, p0, Lgp;->g:I

    .line 1190
    iget v0, p1, Lgn;->f:I

    iput v0, p0, Lgp;->h:I

    .line 1191
    return-void
.end method
