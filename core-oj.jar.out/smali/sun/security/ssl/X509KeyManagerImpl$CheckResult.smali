.class final enum Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
.super Ljava/lang/Enum;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/X509KeyManagerImpl$CheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

.field public static final enum EXPIRED:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

.field public static final enum EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

.field public static final enum OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v2}, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    const-string/jumbo v1, "EXPIRED"

    invoke-direct {v0, v1, v3}, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXPIRED:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    const-string/jumbo v1, "EXTENSION_MISMATCH"

    invoke-direct {v0, v1, v4}, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    const/4 v0, 0x3

    new-array v0, v0, [Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    aput-object v1, v0, v2

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXPIRED:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    aput-object v1, v0, v3

    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    aput-object v1, v0, v4

    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->$VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    .locals 1

    const-class v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v0
.end method

.method public static values()[Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    .locals 1

    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->$VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    return-object v0
.end method
